package com.dev.xrpwebtools.service;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.annotation.WebListener;

import org.quartz.*;
import org.quartz.ee.servlet.QuartzInitializerListener;
import org.quartz.impl.StdSchedulerFactory;

import java.util.Properties;

@WebListener
public class quartzListener extends QuartzInitializerListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        Properties prop = new Properties();
        super.contextInitialized(sce);
        ServletContext ctx = sce.getServletContext();
        StdSchedulerFactory factory = (StdSchedulerFactory) ctx.getAttribute(QUARTZ_FACTORY_KEY);
        prop.setProperty("org.quartz.threadPool.threadCount", String.valueOf(5));
        try {
            factory.initialize(prop);
        } catch (SchedulerException e) { }
        try {
            Scheduler scheduler = factory.getScheduler();
            JobDetail jobDetail = JobBuilder.newJob(com.dev.xrpwebtools.service.indexerJob.class).build();
            Trigger trigger = TriggerBuilder.newTrigger()
                    .withIdentity("NFTIndexer", "g1")
                    .startNow()
                    .build();
            scheduler.scheduleJob(jobDetail, trigger);
            scheduler.start();
        } catch (Exception err) {
            ctx.log("There was an error scheduling the job.", err);
        }
    }

}
