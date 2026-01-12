
# AUTOMOUNTER SHELL
Un bash script sub forma unui shell care interpreteaza comenzi si le execută, verificând dacă comanda executată traversează un mountpoint definit de către un fișier text de configurație completat de către utilizator.  

# Utilizare
1.  Se instalează pe un sistem ce rulează pe o distribuție de Linux stabilă

2.  Se creează în același director un fișier text numit Config.txt cu următoarea structură pe linie:
````

  path/absolut/catre/mountpoint path/din/dev/al/dispozitivului (ex: /home/cristian/Documents/test/mountpoint /dev/sda1)

````

3.  Se oferă drepturi de executare către utilizator prin chmod
   ````
  chmod u+x ./amsh.sh
  ````

4. Se rulează scriptul cu `` ./amsh.sh `` și se execută comenzi în mod normal
   

# Resurse utilizate:
- Manualul din terminal

- https://www.techtarget.com/whatis/definition/mount-point
- https://linuxconfig.org/bash-prompt-basics
- https://www.geeksforgeeks.org/linux-unix/mount-command-in-linux-with-examples/
- https://www.geeksforgeeks.org/linux-unix/how-to-mount-and-unmount-drives-on-linux/
- https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/10/html/managing_file_systems/mounting-file-systems
- https://linuxconfig.org/linux-subshells-for-beginners-with-examples
