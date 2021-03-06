﻿using System;
using System.Collections.Generic;
using System.Text;

namespace Netnr.Func
{
    /// <summary>
    /// 输出
    /// </summary>
    public class Console
    {
        /// <summary>
        /// 写入错误信息
        /// </summary>
        /// <param name="ex"></param>
        public static void Write(Exception ex)
        {
            string msg = $"==========日志记录时间：{DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")}{Environment.NewLine}"
                       + $"消息内容：{ex.Message}{Environment.NewLine}"
                       + $"引发异常的方法：{ex.StackTrace.Split(Environment.NewLine, StringSplitOptions.RemoveEmptyEntries)[0]}"
                       + Environment.NewLine + Environment.NewLine;
            Write(msg);
        }

        /// <summary>
        /// 写入消息
        /// </summary>
        /// <param name="msg"></param>
        public static void Write(string msg)
        {
            DateTime dt = DateTime.Now;
            string path = GlobalVar.ContentRootPath + "/logs/" + dt.ToString("yyyyMM") + "/";
            Core.FileTo.WriteText(msg, path, "console_" + dt.ToString("yyyyMMdd") + ".log");
        }
    }
}
