//Q2
/*
Q2-1.git status
用來檢查目前git的狀態，來查看目前在哪一個樹狀上面、看是否有已經修改但未追蹤的檔案、以及那些檔案已經在staging area暫存區域（index）等待遞交到Repository。
     On branch master
     Your branch is up to date with 'origin/master'.
 
     nothing to commit, working tree clean
 
Q2-2.git add
 讓git開始追蹤新的檔案或是修改的檔案到暫存區。
 git add .
 git add README.md

Q2-3.git commit
 將已經放置到暫存區的檔案遞交變更到Repository。（未暫存的檔案並不會遞交）
 git commit -m “first commit”

Q2-4.git log
 檢視過去提交過的歷史紀錄或檢視複製（clone）版本控制庫的歷史訊息。未使用任何參數時，將會以新到舊的順序顯示
git log
     //顯示結果如下
     commit 5ca9c2f5ae7a18742bb4fc955b154493608abe29 (HEAD -> master, origin/master,
     origin/HEAD)
     Author: JC Spark <sparkdoaz@gmail.com>
     Date:   Tue Jun 11 23:45:35 2019 +0800
 
     my_blog commit
 
     commit 7feae798f025e6168ac71cb4487567a03c7414d6
     Author: JC Spark <sparkdoaz@gmail.com>
     Date:   Tue Jun 11 23:29:11 2019 +0800
 
     hugo initial commit

Q2-5.git push [Repo_name] [Branch_name]
 能夠與其他repository通訊，並且確定與本地倉庫的差異，然後將差異發送到其他遠端倉庫。通常會需要身分驗證。
 [Repo_name]:遠端倉庫伺服器名、[Branch_name]：本地倉庫分支名。
 如果別人和你都複製了倉庫，而對方先發送，就必須先擷取更新後再次發送。
 git push origin master
    將本地倉庫master分支發送到遠端倉庫origin的伺服器上面。

Q2-6.git remote -v
 git remote 可以用來管理遠端倉庫記錄，該指令會列出每個遠端倉庫的簡短名稱，可以將很長的URL儲存成一個簡短的名稱例如origin，這樣就不用打很長的內容。
 在複製某個倉庫後，可以至少看到名為origin的遠端倉庫，這是Git給複製原始伺服器取的預設名稱。
 使用 -v 參數會顯示出Git儲存的每個遠端倉庫對應的URL
    //顯示結果如下
     ➜  My_Blog git:(master) git remote
     origin
     ➜  My_Blog git:(master) git remote -v
     origin    https://github.com/sparkdoaz/academic-kickstart.git (fetch)
     origin    https://github.com/sparkdoaz/academic-kickstart.git (push)
     ➜  My_Blog git:(master)

Q2-7.git branch
 為分支管理工具，可以列出擁有的分支、建立新分支、刪除分支、重新命名分支
 git branch testing //建立名為testing的分支
 git branch -d testing //刪除testing分支

Q2-8.fork
 如果想要參與某個現有的專案，但是沒有推送權限，可以fork（衍生）這個專案。也就是說GitHub會複製一份專案的副本給你，並且對這個副本擁有推送等所有的權限。
 這個副本會儲存在你的帳號下面。
 可以自行加入變更以改善這個專案副本，並推送到自己的GitHub專案，當變更累積到一定程度並且想要有所貢獻時，可以開啟pull request，這時將會開啟討論串讓貢獻者和擁有者討論變更，直到擁有者覺得可以合併進原始專案中即會關閉pull request。
 ex：
    去到GitHub想參與的專案頁面，點下右上角的「Fork」鍵，就可以 fork 專案。

//Q3
先到GitHub中建立新的專案（右上角的+號，選擇New repository）
 輸入專案名稱、填寫描述、選擇公開與否，最後點擊create repository。
 點擊剛剛建立的專案，
 回到本機的專案資料夾中，假設還沒開始專案。（如果有已經開始專案了就直接跳到第四步驟）
 1.先初始化 git init
 2.使用 git add 【檔案名稱】，將已經修改好的檔案加入到暫存區。
 3.git commit -m “first commit” ，進行第一次遞交到倉庫。
 4.git remote add origin https://github.com/sparkdoaz/test.git ，設定加入遠端倉庫的位置，origin是後面伺服器的代稱（可以自行更改）。
 5.git push -u origin master ，將專案推送到遠端倉庫（https協定需要輸入GitHub的帳號密碼）。
    master 是本地的分支名稱，也就是將master分支推送到origin遠端倉庫進行更新，如果origin倉庫中沒有master分支就建立同名分支。
    -u 代表 upstream 上游，也就是 將遠端倉庫origin/master 視為 master（本地分支）的上游，之後直接輸入 git push 不加參數時，系統就會視為是要推送到origin/master。


 */

