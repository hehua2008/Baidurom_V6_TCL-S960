.class Lcom/android/jrdsettings/remotesecurity/service/LoginOutService$2;
.super Landroid/os/Handler;
.source "LoginOutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService$2;->this$0:Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 64
    iget v2, p1, Landroid/os/Message;->what:I

    .line 65
    .local v2, what:I
    packed-switch v2, :pswitch_data_0

    .line 101
    :goto_0
    :pswitch_0
    return-void

    .line 67
    :pswitch_1
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService$2;->this$0:Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;

    invoke-direct {v0, v3}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, dbRsdbHelper:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v3, "LoginOutService"

    const-string v4, "save data begin"

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "rs_state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v3, "regid"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "sim_serial_number"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "isLoginOut"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v3, "rs_lock_password_state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v3, "rs_lock_password_error_times"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->addOrUpdate(Landroid/content/ContentValues;)V

    .line 90
    const-string v3, "LoginOutService"

    const-string v4, "save data end"

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v3, "LoginOutService"

    const-string v4, "close  Service begin"

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService$2;->this$0:Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;

    invoke-virtual {v3}, Landroid/app/Service;->stopSelf()V

    .line 94
    const-string v3, "LoginOutService"

    const-string v4, "close  Service end"

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
