package edu.fje.daw2;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class LoginUtility {

    static Map<String,String> accounts = null;

    public static Map getUsers() {
        accounts = new HashMap<String, String>();
        //final File properties = new File("C:\\Users\\MarioAdmin\\IdeaProjects\\Login\\src\\usuaris.properties");
        String pathMario = "C:/Users/MarioAsus/IdeaProjects/Login/src/usuaris.properties";
        String pathCarlos = "/home/caroga/JavaEnterprise/java2e-login-master/src/usuaris.properties";
        final File properties = new File(pathMario);

        BufferedReader br = null;
        try{
            br = new BufferedReader(new FileReader(properties));

            while (true)
            {
                String  line = br.readLine();
                if (line == null)
                    break;//end of file have been reached

                final String user = line.split("=")[1].trim();

                line = br.readLine();
                if (line == null)// pwd is missing
                    throw new Exception("Invalid pwd file");

                final String pwd = line.split("=")[1].trim();
                accounts.put(user, pwd);

            }

        }
        catch (final Exception e)
        {
            // add your own error handling code here
            e.printStackTrace();
        }
        finally
        {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return accounts;
    }

    public static boolean checkUser(String user, String password){
        boolean checked = false;
        for (Map.Entry<String,String> entry : accounts.entrySet()){
            if (entry.getKey().equals(user)){
                if (entry.getValue().equals(password)){
                    checked = true;
                    break;
                }
            }
        }
        return checked;
    }
}
