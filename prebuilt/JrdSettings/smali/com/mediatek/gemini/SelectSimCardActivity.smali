.class public Lcom/mediatek/gemini/SelectSimCardActivity;
.super Lcom/android/jrdsettings/Settings;
.source "SelectSimCardActivity.java"


# static fields
.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "SelectSimCardActivity"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/jrdsettings/Settings;-><init>()V

    .line 17
    new-instance v0, Lcom/mediatek/gemini/SelectSimCardActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SelectSimCardActivity$1;-><init>(Lcom/mediatek/gemini/SelectSimCardActivity;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SelectSimCardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/jrdsettings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iget-object v1, p0, Lcom/mediatek/gemini/SelectSimCardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0}, Lcom/android/jrdsettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/jrdsettings/Settings;->onDestroy()V

    .line 38
    iget-object v0, p0, Lcom/mediatek/gemini/SelectSimCardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 39
    return-void
.end method
