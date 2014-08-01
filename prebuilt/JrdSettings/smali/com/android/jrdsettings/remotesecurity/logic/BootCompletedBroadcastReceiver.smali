.class public Lcom/android/jrdsettings/remotesecurity/logic/BootCompletedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BootCompletedBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doSendLoginOutRequest(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 38
    const-string v1, "BootCompletedBroadcastReceiver"

    const-string v2, "doSendLoginOutRequest  begin"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V

    .line 43
    const-string v1, "BootCompletedBroadcastReceiver"

    const-string v2, "doSendLoginOutRequest  end"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 20
    const-string v5, "BootCompletedBroadcastReceiver"

    const-string v6, "BootCompletedBroadcastReceiver onReceive"

    invoke-static {v5, v6}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    invoke-direct {v0, p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, dbRsdbHelper:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v5, "rs_state"

    invoke-virtual {v0, v5}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getIntValue(Ljava/lang/String;)I

    move-result v4

    .line 23
    .local v4, rs_state:I
    const-string v5, "isLoginOut"

    invoke-virtual {v0, v5}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 25
    .local v1, isLoginOut:I
    if-nez v4, :cond_0

    if-nez v1, :cond_0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/remotesecurity/logic/BootCompletedBroadcastReceiver;->doSendLoginOutRequest(Landroid/content/Context;)V

    .line 29
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    const-class v5, Lcom/android/jrdsettings/remotesecurity/logic/BootCompletedBroadcastReceiver;

    invoke-direct {v3, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v3, receiver:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 32
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v3, v7, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 35
    return-void
.end method
