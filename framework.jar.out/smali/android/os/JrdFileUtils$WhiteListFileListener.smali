.class Landroid/os/JrdFileUtils$WhiteListFileListener;
.super Landroid/os/FileObserver;
.source "JrdFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/JrdFileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WhiteListFileListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/JrdFileUtils;


# direct methods
.method public constructor <init>(Landroid/os/JrdFileUtils;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "path"

    .prologue
    .line 231
    iput-object p1, p0, Landroid/os/JrdFileUtils$WhiteListFileListener;->this$0:Landroid/os/JrdFileUtils;

    .line 232
    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    .line 233
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    .parameter "event"
    .parameter "path"

    .prologue
    .line 236
    sparse-switch p1, :sswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 239
    :sswitch_0
    invoke-static {}, Landroid/os/JrdFileUtils;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 242
    :sswitch_1
    iget-object v0, p0, Landroid/os/JrdFileUtils$WhiteListFileListener;->this$0:Landroid/os/JrdFileUtils;

    #calls: Landroid/os/JrdFileUtils;->readWhiteList()V
    invoke-static {v0}, Landroid/os/JrdFileUtils;->access$100(Landroid/os/JrdFileUtils;)V

    goto :goto_0

    .line 236
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
    .end sparse-switch
.end method
