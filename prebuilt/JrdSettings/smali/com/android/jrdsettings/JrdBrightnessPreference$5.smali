.class Lcom/android/jrdsettings/JrdBrightnessPreference$5;
.super Landroid/content/BroadcastReceiver;
.source "JrdBrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/JrdBrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/JrdBrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/JrdBrightnessPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference$5;->this$0:Lcom/android/jrdsettings/JrdBrightnessPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, action:Ljava/lang/String;
    const-string v1, "QUICKSETTINGS_POWERSAVER_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference$5;->this$0:Lcom/android/jrdsettings/JrdBrightnessPreference;

    invoke-virtual {v1}, Lcom/android/jrdsettings/JrdBrightnessPreference;->onPowerSaverModeChange()V

    .line 183
    :cond_0
    return-void
.end method
