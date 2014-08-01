.class public Lcom/android/jrdsettings/remotesecurity/ScreamActivity;
.super Landroid/app/Activity;
.source "ScreamActivity.java"


# static fields
.field private static final ID_NOTIFICATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ScreamActivity"


# instance fields
.field private final mKillScreamReceiver:Landroid/content/BroadcastReceiver;

.field mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/ScreamActivity$2;-><init>(Lcom/android/jrdsettings/remotesecurity/ScreamActivity;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity;->mKillScreamReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/remotesecurity/ScreamActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/remotesecurity/ScreamActivity;->cancelNotification(I)V

    return-void
.end method

.method private cancelNotification(I)V
    .locals 3
    .parameter "notificationId"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 119
    const-string v0, "ScreamActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelNotification, notificationId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private initNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 103
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f0200e6

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 106
    .local v4, mNotification:Landroid/app/Notification;
    const v5, 0x7f09096f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 107
    .local v2, contentTitle:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 108
    .local v1, contentText:Ljava/lang/CharSequence;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/jrdsettings/remotesecurity/ScreamActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v3, intent:Landroid/content/Intent;
    invoke-static {p0, v9, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 111
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v4, p0, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 112
    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v9, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 113
    const-string v5, "ScreamActivity"

    const-string v6, "initNotification, notificationId:0"

    invoke-static {v5, v6}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 55
    .local v3, win:Landroid/view/Window;
    const v4, 0x280001

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 58
    const v4, 0x7f0400b6

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 59
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity;->mNotificationManager:Landroid/app/NotificationManager;

    .line 60
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/ScreamActivity;->initNotification()V

    .line 61
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "com.android.jrdsettings.remotesecurity.SCREAM_KILL"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity;->mKillScreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09096f

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090645

    new-instance v6, Lcom/android/jrdsettings/remotesecurity/ScreamActivity$1;

    invoke-direct {v6, p0}, Lcom/android/jrdsettings/remotesecurity/ScreamActivity$1;-><init>(Lcom/android/jrdsettings/remotesecurity/ScreamActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 81
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/ScreamActivity;->mKillScreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    return-void
.end method
