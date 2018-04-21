package weixin.hotel.wx;

import com.github.wxpay.sdk.WXPayConfig;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class MyConfig implements WXPayConfig{

    private byte[] certData;

    public MyConfig() throws Exception {
     //   String certPath = "C://CERT/common/apiclient_cert.p12";
        String tomcatPath = System.getProperty("user.dir");
        System.out.println("tomcatPath : " + tomcatPath);
        String certPath = "";
        if (tomcatPath.contains("\\")) {
            certPath = tomcatPath.replace("\\bin", "\\webapps\\weihotel\\") + "apiclient_cert.p12";
        } else {
            certPath = tomcatPath.replace("/bin", "/webapps/weihotel") + "apiclient_cert.p12";
        }

        System.out.println("certPath : " + certPath);
        File file = new File(certPath);
        InputStream certStream = new FileInputStream(file);
        this.certData = new byte[(int) file.length()];
        certStream.read(this.certData);
        certStream.close();
    }



    public String getAppID() {
        return "wxc36503facbd16dec";
    }

    public String getMchID() {
        return "1486581052";
    }

    public String getKey() {
        return "R75cbfc904b4f17a3d71abeee75d9B42";
    }


    public InputStream getCertStream() {
        ByteArrayInputStream certBis = new ByteArrayInputStream(this.certData);
        return certBis;
    }


    public int getHttpConnectTimeoutMs() {
        return 8000;
    }

    public int getHttpReadTimeoutMs() {
        return 10000;
    }
}
