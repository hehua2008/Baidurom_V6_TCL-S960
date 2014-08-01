.class Lcom/mediatek/gemini/SimManagement$2;
.super Landroid/database/ContentObserver;
.source "SimManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$2;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$2;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->updateVoiceCallPrefe()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$100(Lcom/mediatek/gemini/SimManagement;)V

    .line 167
    return-void
.end method
