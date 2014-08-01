.class Lcom/android/jrdsettings/audioshare/AudioShareSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioShareSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/audioshare/AudioShareSettings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$2;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$2;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #calls: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$100(Lcom/android/jrdsettings/audioshare/AudioShareSettings;Landroid/content/Context;Landroid/content/Intent;)V

    .line 173
    return-void
.end method
