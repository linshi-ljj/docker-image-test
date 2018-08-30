/**
 * Alipay.com Inc.
 * Copyright (c) 2004-2018 All Rights Reserved.
 */

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/**
 *
 * @author linshi.ljj
 * @version $Id: WriterHelper.java, v 0.1 2018年08月30日 上午10:58 linshi.ljj Exp $
 */
public class WriterHelper {

    public static int sleepTime = 1 * 1000;

    public static void main(String[] args) throws IOException, InterruptedException {

        File file = new File("docker_image_run_output_log");
        if (!file.exists()) {
            file.createNewFile();
        }

        FileWriter writer = new FileWriter("docker_image_run_output_log");

        while (true) {
            Thread.sleep(sleepTime);
            writer.write(String.valueOf(System.currentTimeMillis()) + "\n");
            writer.flush();
        }
    }
}