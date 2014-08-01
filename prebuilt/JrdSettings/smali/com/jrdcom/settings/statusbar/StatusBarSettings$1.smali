.class Lcom/jrdcom/settings/statusbar/StatusBarSettings$1;
.super Landroid/os/Handler;
.source "StatusBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/settings/statusbar/StatusBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;


# direct methods
.method constructor <init>(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$1;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$1;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    #calls: Lcom/jrdcom/settings/statusbar/StatusBarSettings;->loadAppsDone()V
    invoke-static {v0}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->access$000(Lcom/jrdcom/settings/statusbar/StatusBarSettings;)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
