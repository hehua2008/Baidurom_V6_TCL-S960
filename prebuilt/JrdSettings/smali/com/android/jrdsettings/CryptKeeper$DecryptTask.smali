.class Lcom/android/jrdsettings/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/jrdsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/CryptKeeper;Lcom/android/jrdsettings/CryptKeeper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/CryptKeeper$DecryptTask;-><init>(Lcom/android/jrdsettings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "params"

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/jrdsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    #calls: Lcom/android/jrdsettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/jrdsettings/CryptKeeper;->access$000(Lcom/android/jrdsettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 154
    .local v1, service:Landroid/os/storage/IMountService;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 157
    :goto_0
    return-object v2

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    const-string v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "failedAttempts"

    .prologue
    const/16 v5, 0x1e

    .line 163
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failedAttempts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 169
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/jrdsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    const-class v3, Lcom/android/jrdsettings/CryptKeeper$FadeToBlack;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/jrdsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 171
    iget-object v2, p0, Lcom/android/jrdsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 184
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 174
    iget-object v2, p0, Lcom/android/jrdsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_2

    .line 176
    iget-object v2, p0, Lcom/android/jrdsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    #setter for: Lcom/android/jrdsettings/CryptKeeper;->mCooldown:I
    invoke-static {v2, v5}, Lcom/android/jrdsettings/CryptKeeper;->access$102(Lcom/android/jrdsettings/CryptKeeper;I)I

    .line 177
    iget-object v2, p0, Lcom/android/jrdsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    #calls: Lcom/android/jrdsettings/CryptKeeper;->cooldown()V
    invoke-static {v2}, Lcom/android/jrdsettings/CryptKeeper;->access$200(Lcom/android/jrdsettings/CryptKeeper;)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/android/jrdsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    const v3, 0x7f0b0028

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 180
    .local v1, status:Landroid/widget/TextView;
    const v2, 0x7f090830

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object v2, p0, Lcom/android/jrdsettings/CryptKeeper$DecryptTask;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    #getter for: Lcom/android/jrdsettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/jrdsettings/CryptKeeper;->access$300(Lcom/android/jrdsettings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
