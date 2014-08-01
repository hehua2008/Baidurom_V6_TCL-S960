.class Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$4;
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
    .line 316
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 319
    iget v5, p1, Landroid/os/Message;->what:I

    .line 320
    .local v5, what:I
    packed-switch v5, :pswitch_data_0

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 322
    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.jrdsettings.remotesecurity.RS_STATE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "rs_state"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-virtual {v6, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-direct {v2, v6}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 328
    .local v2, dbHelper:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 329
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "rs_state"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v6, "regid"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v6, "sim_serial_number"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v6, "isLoginOut"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v6, "rs_lock_password_state"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v6, "rs_lock_password_error_times"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    invoke-virtual {v2, v4}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->addOrUpdate(Landroid/content/ContentValues;)V

    .line 348
    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 351
    .end local v2           #dbHelper:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #values:Landroid/content/ContentValues;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f090967

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090970

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090645

    new-instance v8, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$4$1;

    invoke-direct {v8, p0}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$4$1;-><init>(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$4;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 360
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 363
    .local v0, alert:Landroid/app/AlertDialog;
    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mPausing:Z
    invoke-static {v6}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->access$200(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
