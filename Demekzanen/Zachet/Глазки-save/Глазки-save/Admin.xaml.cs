using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Navigation;
using System.Windows.Threading;

namespace Глазки_save
{
    /// <summary>
    /// Логика взаимодействия для Admin.xaml
    /// </summary>

    public partial class Admin : Page
    {
        Random _random = new Random();
        //DateTime date = new DateTime(0, 0);
        DispatcherTimer timer = new DispatcherTimer();
        // TimeSpan duration;
        public Admin()
        {
            InitializeComponent();
            if (App.IsGone == true)
            {
                //duration = TimeSpan.FromSeconds(1);

                //LoginTimerTB.Visibility = Visibility.Visible;
                //LoginBlock.Visibility = Visibility.Collapsed;
                // BlockedTB.Text = "Время сеанса истекло!";
                //   BtnInLogin.IsEnabled = false;
                StartTimer();
            }
            UpdateCaptcha();
            Classes.Connect.modeldb = new Model.testscriptDAEntities();

        }

        string symbol = "";
        int att = 0;
        int time = 0;




        private void UpdateCaptcha()
        {
            SPanelSymbols.Children.Clear();
            CanvasNoise.Children.Clear();


            symbol = "";
            GenerateSymbols(3);
            //GenerateNoise(1);
        }

        public string Symbols;

        private void GenerateSymbols(int count)
        {
            string alphabet = "WERPASFHKXVBM234578";
            for (int i = 0; i < count; i++)
            {
                string symbols = alphabet.ElementAt(_random.Next(0, alphabet.Length)).ToString();
                TextBlock lbl = new TextBlock();

                lbl.Text = symbols;
                lbl.FontSize = 25;
                lbl.RenderTransform = new RotateTransform(_random.Next(-45, 45));
                lbl.Margin = new Thickness(-2, 0, -2, 0);


                symbol = symbol + symbols;

                SPanelSymbols.Children.Add(lbl);
                Symbols = Symbols + symbol;
            }
        }

        private void BtnUpdateCaptcha_Click(object sender, RoutedEventArgs e)
        {
            UpdateCaptcha();
        }

        private void login(object sender, RoutedEventArgs e)

        {
            LogIn();
        }

        private void LogIn()
        {
            try
            {
                //table user чтоб извлечь login and passworld 
                var userObj = Classes.Connect.modeldb.user.FirstOrDefault(x =>
               x.Name == log.Text && x.Passworld == pass.Password);
                Console.WriteLine(log.Text);
                if (userObj != null)
                {
                    Model.testscriptDAEntities.currentuser = userObj;
                    {
                        switch (userObj.ID)
                        {
                            case 1:
                                NavigationService.Navigate(new Administrator());
                                break;

                            case 2:
                                NavigationService.Navigate(new StarSmena());
                                break;

                            case 3:
                                NavigationService.Navigate(new Maneger());
                                break;
                                //public static user currentuser;

                        }
                    }

                }
                else
                {
                    att++;
                    CheckAttemps();
                    UpdateCaptcha();
                    MessageBox.Show("Не удается войти!");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка: " + ex.Message.ToString(), "Критическая работа приложения",
                    MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }


        private void CheckAttemps()
        {
            if (att == 2)
            {
                Console.WriteLine(TBCaptcha.Text);
                Capcha.Visibility = Visibility.Visible;
                CapchaBox.Visibility = Visibility.Visible;
                loginBT.Visibility = Visibility.Hidden;
                CapchaLogin.Visibility = Visibility.Visible;
            }
            if (att == 3)
            {
                NavigationService.Navigate(new Sun());
            }

        }

        private void StartTimer()
        {
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += timerTick;
            timer.Start();


        }

        private void timerTick(object sender, EventArgs e)
        {
            if (time != 10)
            {
                time += 1;
                TimeTB.Text = Convert.ToString(TimeSpan.FromSeconds(time));
            }
            else
            {
                CapchaLogin.Visibility = Visibility.Visible;               
                timer.Stop();
                time = 0;
                timer.Tick -= timerTick;
            }

        }

        private void TbxShowPass_MouseDown(object sender, MouseButtonEventArgs e)
        {
            TxbPassword.Width = pass.Width;
            TxbPassword.Visibility = Visibility.Visible;
            pass.Visibility = Visibility.Collapsed;
            TxbPassword.Text = pass.Password;
        }

        private void TbxShowPass_MouseUp(object sender, MouseButtonEventArgs e)
        {
            TxbPassword.Visibility = Visibility.Collapsed;
            pass.Visibility = Visibility.Visible;
        }

        private void Check_Capcha(object sender, RoutedEventArgs e)
        {

            if (TBCaptcha.Text == symbol)
            {
                loginBT.Visibility = Visibility.Visible;
            }
            else
            {
                CapchaLogin.Visibility = Visibility.Visible;
                TimeTB.Visibility = Visibility.Visible;
                CapchaLogin.Visibility = Visibility.Hidden;

                StartTimer();


            }

        }
    }
}
