.class Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4;
.super Landroid/os/Handler;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 202
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    .line 203
    .local v12, what:I
    packed-switch v12, :pswitch_data_0

    .line 268
    const-string v13, "Register"

    const-string v14, "handleMessage default"

    invoke-static {v13, v14}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 205
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v8, sim_serial_number:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    iget-object v13, v13, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->context:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, subscriberId_sim_1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    iget-object v13, v13, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->context:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, subscriberId_sim_2:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 211
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_0
    invoke-static {v9}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {v10}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 215
    const-string v13, ";"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_1
    invoke-static {v10}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 219
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_2
    :try_start_0
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;

    .line 224
    .local v7, response:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    invoke-direct {v3, v13}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 225
    .local v3, dbHelper:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v11, values:Landroid/content/ContentValues;
    const-string v13, "imei"

    invoke-virtual {v7, v13}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, imei:Ljava/lang/String;
    const-string v13, "imei"

    invoke-virtual {v11, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v13, "regid"

    const-string v14, "regid"

    invoke-virtual {v7, v14}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v13, "Register"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "registerId ========= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "regid"

    invoke-virtual {v7, v15}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v13, "email"

    const-string v14, "email"

    invoke-virtual {v7, v14}, Lcom/android/jrdsettings/remotesecurity/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v13, "sec_number"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mSecurity_num:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$000(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v13, "phone_name"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mPhoneName:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$200(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v13, "rs_state"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v13, "sim_serial_number"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v13, "Register"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sim_serial_number="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v3, v11}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->addOrUpdate(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Lcom/android/jrdsettings/remotesecurity/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v3           #dbHelper:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    .end local v5           #imei:Ljava/lang/String;
    .end local v7           #response:Lcom/android/jrdsettings/remotesecurity/json/JSONObject;
    .end local v11           #values:Landroid/content/ContentValues;
    :goto_1
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.android.jrdsettings.remotesecurity.RS_STATE_CHANGED"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v6, intent:Landroid/content/Intent;
    const-string v13, "rs_state"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    invoke-virtual {v13, v6}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 242
    .end local v6           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 244
    .local v4, e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 255
    .end local v4           #e:Lcom/android/jrdsettings/remotesecurity/json/JSONException;
    .end local v8           #sim_serial_number:Ljava/lang/StringBuilder;
    .end local v9           #subscriberId_sim_1:Ljava/lang/String;
    .end local v10           #subscriberId_sim_2:Ljava/lang/String;
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v13, 0x7f090967

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f090970

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const-string v14, "OK"

    new-instance v15, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4$1;

    invoke-direct/range {v15 .. v16}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4$1;-><init>(Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 265
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
