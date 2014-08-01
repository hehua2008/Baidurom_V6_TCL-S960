.class Lcom/android/jrdsettings/remotesecurity/service/ScreamService$2;
.super Ljava/lang/Object;
.source "ScreamService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/service/ScreamService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/service/ScreamService;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService$2;->this$0:Lcom/android/jrdsettings/remotesecurity/service/ScreamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 124
    const-string v0, "ScreamService"

    const-string v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 126
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 127
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService$2;->this$0:Lcom/android/jrdsettings/remotesecurity/service/ScreamService;

    const/4 v1, 0x0

    #setter for: Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->access$102(Lcom/android/jrdsettings/remotesecurity/service/ScreamService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 128
    const/4 v0, 0x1

    return v0
.end method
