package com.example.jpademo.servlet;

import javax.servlet.AsyncContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Writer;
@WebServlet(name = "asyncDemo", asyncSupported = true)

public class AsyncServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        Writer writer = resp.getWriter();
        writer.write("<progress id = 'progress' max=100></progress>");
        AsyncContext asyncContext = req.startAsync();
        asyncContext.start(new Runnable() {
            @Override
            public void run() {

            }
        });
        int i = 0;
        while (i < 100) {
            i++;
            try {
                writer.write("<script>document.getElementById('progress').value = '" + i + " '</script>");
                writer.flush();
                Thread.sleep(100);
            }catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }
}
