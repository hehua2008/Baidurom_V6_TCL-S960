.class Lcom/android/jrdsettings/audioshare/AudioShareSettings$1;
.super Ljava/lang/Object;
.source "AudioShareSettings.java"

# interfaces
.implements Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/AudioShareSettings;
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
    .line 140
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public speakerAndPhone()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$000(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->audiobeamingSetLocalMute(Z)V

    .line 154
    return-void
.end method

.method public speakerOnly()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$000(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->audiobeamingSetLocalMute(Z)V

    .line 147
    return-void
.end method
