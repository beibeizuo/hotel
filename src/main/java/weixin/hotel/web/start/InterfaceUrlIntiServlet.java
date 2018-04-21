package weixin.hotel.web.start;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

/**
 * Created by Administrator on 2017/9/29.
 */
public class InterfaceUrlIntiServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    public void init(ServletConfig config) throws ServletException {
        InterfaceUrlInti.init();
    }
}
