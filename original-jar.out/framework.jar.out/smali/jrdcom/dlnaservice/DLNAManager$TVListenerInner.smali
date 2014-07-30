.class Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;
.super Ljrdcom/dlnaservice/ITVListener$Stub;
.source "DLNAManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljrdcom/dlnaservice/DLNAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TVListenerInner"
.end annotation


# instance fields
.field final synthetic this$0:Ljrdcom/dlnaservice/DLNAManager;


# direct methods
.method constructor <init>(Ljrdcom/dlnaservice/DLNAManager;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;->this$0:Ljrdcom/dlnaservice/DLNAManager;

    invoke-direct {p0}, Ljrdcom/dlnaservice/ITVListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public onPlayStateChanged(Ljava/lang/String;I)V
    .locals 3
    .parameter "identification"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, "ProgressTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayStateChanged  mIdentification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  , mPlayStateListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;->this$0:Ljrdcom/dlnaservice/DLNAManager;

    #getter for: Ljrdcom/dlnaservice/DLNAManager;->mPlayStateListeners:Ljava/util/Map;
    invoke-static {v2}, Ljrdcom/dlnaservice/DLNAManager;->access$100(Ljrdcom/dlnaservice/DLNAManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;->this$0:Ljrdcom/dlnaservice/DLNAManager;

    #getter for: Ljrdcom/dlnaservice/DLNAManager;->mPlayStateListeners:Ljava/util/Map;
    invoke-static {v0}, Ljrdcom/dlnaservice/DLNAManager;->access$100(Ljrdcom/dlnaservice/DLNAManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;->this$0:Ljrdcom/dlnaservice/DLNAManager;

    #getter for: Ljrdcom/dlnaservice/DLNAManager;->mPlayStateListeners:Ljava/util/Map;
    invoke-static {v0}, Ljrdcom/dlnaservice/DLNAManager;->access$100(Ljrdcom/dlnaservice/DLNAManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrdcom/dlnaservice/PlayStateListener;

    invoke-interface {v0, p2}, Ljrdcom/dlnaservice/PlayStateListener;->onPlayStateChanged(I)V

    .line 82
    :cond_0
    return-void
.end method

.method public onProgressChanged(Ljava/lang/String;JJ)V
    .locals 3
    .parameter "identify"
    .parameter "position"
    .parameter "duration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    const-string v0, "ProgressTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressChanged mIdentification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ProgressListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;->this$0:Ljrdcom/dlnaservice/DLNAManager;

    #getter for: Ljrdcom/dlnaservice/DLNAManager;->mProgressListeners:Ljava/util/Map;
    invoke-static {v2}, Ljrdcom/dlnaservice/DLNAManager;->access$000(Ljrdcom/dlnaservice/DLNAManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;->this$0:Ljrdcom/dlnaservice/DLNAManager;

    #getter for: Ljrdcom/dlnaservice/DLNAManager;->mProgressListeners:Ljava/util/Map;
    invoke-static {v0}, Ljrdcom/dlnaservice/DLNAManager;->access$000(Ljrdcom/dlnaservice/DLNAManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Ljrdcom/dlnaservice/DLNAManager$TVListenerInner;->this$0:Ljrdcom/dlnaservice/DLNAManager;

    #getter for: Ljrdcom/dlnaservice/DLNAManager;->mProgressListeners:Ljava/util/Map;
    invoke-static {v0}, Ljrdcom/dlnaservice/DLNAManager;->access$000(Ljrdcom/dlnaservice/DLNAManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrdcom/dlnaservice/ProgressListener;

    invoke-interface {v0, p2, p3, p4, p5}, Ljrdcom/dlnaservice/ProgressListener;->onProgressChanged(JJ)V

    .line 59
    :cond_0
    return-void
.end method

.method public onSeekStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    return-void
.end method

.method public onSeekStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    return-void
.end method
