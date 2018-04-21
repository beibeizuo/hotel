package weixin.hotel.aop;


import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;


/**
 * Created by 符柱成 on 2017/8/3.
 */
@Component
@Aspect
public class AESAspect {

    @Before(value = "execution(public * weixin.hotel.controller.*.*(..))" )
    public void beforeShow(JoinPoint jp) {
        String className = jp.getThis().toString();
        String methodName = jp.getSignature().getName();
        System.out.println("执行方法：类"+className+"，方法："+methodName);
    }

    /*@AfterReturning(value="execution(* com.fuzhu.serviceImpl.UserServiceImpl.login(..))",returning = "returnVal")
    public String AfterReturning(JoinPoint joinPoint,Object returnVal){

        System.out.println();
        return "";
    }*/
}
