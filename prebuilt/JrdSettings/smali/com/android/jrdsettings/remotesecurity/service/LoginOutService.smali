.class public Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;
.super Landroid/app/Service;
.source "LoginOutService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginOutService"


# instance fields
.field private final mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

.field private mUnregisterHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService$1;-><init>(Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService$2;-><init>(Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;->mUnregisterHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;->mUnregisterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    const-string v0, "LoginOutService"

    const-string v1, "LoginOutService onCreate"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.jrdsettings.remotesecurity.MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 108
    const-string v0, "LoginOutService"

    const-string v1, "LoginOutService onDestroy"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
