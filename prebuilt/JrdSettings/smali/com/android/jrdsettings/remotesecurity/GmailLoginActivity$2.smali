.class Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;
.super Landroid/os/Handler;
.source "GmailLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 192
    const/4 v3, 0x0

    .line 193
    .local v3, email:Ljava/lang/String;
    const/4 v9, 0x0

    .line 194
    .local v9, username:Ljava/lang/String;
    const/4 v6, 0x0

    .line 195
    .local v6, locale:Ljava/lang/String;
    iget v10, p1, Landroid/os/Message;->what:I

    .line 196
    .local v10, what:I
    const-string v11, "GmailLoginActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleMessage: what = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    packed-switch v10, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 202
    .local v8, response:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    :try_start_0
    const-string v11, "isloginIn"

    invoke-virtual {v8, v11}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 205
    .local v5, isLogin:Z
    :try_start_1
    const-string v11, "email"

    invoke-virtual {v8, v11}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 209
    :goto_1
    :try_start_2
    const-string v11, "GmailLoginActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The googole account is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 211
    :try_start_3
    const-string v11, "name"

    invoke-virtual {v8, v11}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v9

    .line 216
    :goto_2
    :try_start_4
    const-string v11, "locale"

    invoke-virtual {v8, v11}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v6

    .line 220
    :goto_3
    :try_start_5
    const-string v11, "GmailLoginActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The googole username is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", locale is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    if-eqz v5, :cond_1

    .line 222
    new-instance v4, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    const-class v12, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v4, intent:Landroid/content/Intent;
    const-string v11, "username"

    invoke-virtual {v4, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v11, "country"

    invoke-virtual {v4, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v11, "email"

    invoke-virtual {v4, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v11, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-virtual {v11, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 228
    iget-object v11, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-virtual {v11}, Landroid/app/Activity;->finish()V
    :try_end_5
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 256
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #isLogin:Z
    :catch_0
    move-exception v2

    .line 258
    .local v2, e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 206
    .end local v2           #e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    .restart local v5       #isLogin:Z
    :catch_1
    move-exception v2

    .line 207
    .restart local v2       #e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 212
    .end local v2           #e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    :catch_2
    move-exception v2

    .line 213
    .restart local v2       #e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 217
    .end local v2           #e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    :catch_3
    move-exception v2

    .line 218
    .restart local v2       #e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 230
    .end local v2           #e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    :cond_1
    new-instance v11, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    iget-object v12, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-direct {v11, v12}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    const-string v12, "email"

    invoke-virtual {v11, v12}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 232
    .local v7, mail:Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 233
    const-string v11, "GmailLoginActivity"

    const-string v12, "GCM unregister"

    invoke-static {v11, v12}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v11, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-static {v11}, Lcom/android/jrdsettings/remotesecurity/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 236
    :cond_2
    const-string v11, "GmailLoginActivity"

    const-string v12, "The google account is not correspond with the registered one."

    invoke-static {v11, v12}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f090967

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f090971

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f090645

    new-instance v13, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2$1;

    invoke-direct {v13, p0}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2$1;-><init>(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 249
    .local v0, alert:Landroid/app/AlertDialog;
    iget-object v11, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mPausing:Z
    invoke-static {v11}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->access$200(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_6
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 262
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #isLogin:Z
    .end local v7           #mail:Ljava/lang/String;
    .end local v8           #response:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f090967

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f090970

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f090645

    new-instance v13, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2$2;

    invoke-direct {v13, p0}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2$2;-><init>(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 274
    .restart local v0       #alert:Landroid/app/AlertDialog;
    iget-object v11, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mPausing:Z
    invoke-static {v11}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->access$200(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
