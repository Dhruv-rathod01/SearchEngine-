import java.io.*;
import java.net.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class SearchServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String query = request.getParameter("query");

        String apiURL =
                "https://en.wikipedia.org/w/api.php?action=opensearch&search="
                + URLEncoder.encode(query, "UTF-8")
                + "&limit=5&format=json";

        URL url = new URL(apiURL);

        BufferedReader br = new BufferedReader(
                new InputStreamReader(url.openStream()));

        String inputLine;

        StringBuilder result = new StringBuilder();

        while ((inputLine = br.readLine()) != null) {

            result.append(inputLine);

        }

        br.close();

        request.setAttribute("data", result.toString());

        RequestDispatcher rd =
                request.getRequestDispatcher("result.jsp");

        rd.forward(request, response);
    }
}