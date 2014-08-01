.class public Lcom/android/jrdsettings/remotesecurity/PopActivity;
.super Landroid/app/Activity;
.source "PopActivity.java"


# static fields
.field private static final ID_NOTIFICATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PopActivity"


# instance fields
.field mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/remotesecurity/PopActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/remotesecurity/PopActivity;->makePhoneCall(Ljava/lang/String;)V

    return-void
.end method

.method private initNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "phoneNum"
    .parameter "phoneMsg"

    .prologue
    const/4 v9, 0x0

    .line 106
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f0200e6

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 109
    .local v4, mNotification:Landroid/app/Notification;
    iget v5, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/app/Notification;->defaults:I

    .line 110
    iget v5, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/app/Notification;->defaults:I

    .line 116
    const v5, 0x7f090967

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 117
    .local v2, contentTitle:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 118
    .local v1, contentText:Ljava/lang/CharSequence;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/jrdsettings/remotesecurity/PopActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "emergency_num"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v5, "message"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-static {p0, v9, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 127
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v4, p0, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 128
    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/PopActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v9, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 129
    const-string v5, "PopActivity"

    const-string v6, "initNotification, notificationId:0"

    invoke-static {v5, v6}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private makePhoneCall(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    const-string v1, "PopActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makePhoneCall, phoneNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 102
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 36
    .local v9, win:Landroid/view/Window;
    const v10, 0x280001

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 39
    const v10, 0x7f0400b4

    invoke-virtual {p0, v10}, Landroid/app/Activity;->setContentView(I)V

    .line 40
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    iput-object v10, p0, Lcom/android/jrdsettings/remotesecurity/PopActivity;->mNotificationManager:Landroid/app/NotificationManager;

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 42
    .local v4, intent:Landroid/content/Intent;
    const-string v10, "emergency_num"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 44
    .local v8, phoneNumber:Ljava/lang/String;
    const-string v10, "message"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 46
    .local v7, phoneMessage:Ljava/lang/String;
    const-string v10, "PopActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "phoneNumber ==== "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v10, "PopActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "phoneMessage ==== "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, v8, v7}, Lcom/android/jrdsettings/remotesecurity/PopActivity;->initNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 55
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f0400b2

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 56
    .local v5, layoutPop:Landroid/view/View;
    const v10, 0x7f0b01cd

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 57
    .local v6, messagePop:Landroid/widget/TextView;
    const v10, 0x7f0b01ce

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, emergencyNum:Landroid/widget/TextView;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090645

    new-instance v12, Lcom/android/jrdsettings/remotesecurity/PopActivity$1;

    invoke-direct {v12, p0}, Lcom/android/jrdsettings/remotesecurity/PopActivity$1;-><init>(Lcom/android/jrdsettings/remotesecurity/PopActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-static {v8}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 69
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v10, 0x7f090972

    new-instance v11, Lcom/android/jrdsettings/remotesecurity/PopActivity$2;

    invoke-direct {v11, p0, v8}, Lcom/android/jrdsettings/remotesecurity/PopActivity$2;-><init>(Lcom/android/jrdsettings/remotesecurity/PopActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    :cond_0
    invoke-static {v7}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 80
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 85
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 86
    return-void

    .line 82
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_1
    const v10, 0x7f090976

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method
