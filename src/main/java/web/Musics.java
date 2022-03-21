package web;

import java.io.IOException;
import web.ReadMusics;
import web.Utils;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Musics", urlPatterns = {"/Musics"})
public class Musics extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        String term = request.getParameter("term");
        String q = term.toLowerCase();

        List<String> musicsList = ReadMusics.readAll(getServletContext());
        List<String> filteredMusicsList = Utils.filterListByTerm(musicsList, q);
        String json = Utils.list2Json(filteredMusicsList);
        response.getWriter().write(json);
    }
}
