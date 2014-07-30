.class Lcom/android/server/ConnectivityService$5;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->setMobileDataEnabledGemini(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;

.field final synthetic val$slot_id:I


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4712
    iput-object p1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    iput p2, p0, Lcom/android/server/ConnectivityService$5;->val$slot_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4715
    iget-object v0, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p0, Lcom/android/server/ConnectivityService$5;->val$slot_id:I

    #calls: Lcom/android/server/ConnectivityService;->setMobileDataEnabledGemini_in(I)Z
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;I)Z

    .line 4716
    return-void
.end method
