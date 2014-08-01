.class Lcom/mediatek/gemini/SimManagement$7;
.super Ljava/lang/Object;
.source "SimManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/SimManagement;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .parameter

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$7;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$7;->this$0:Lcom/mediatek/gemini/SimManagement;

    #calls: Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$700(Lcom/mediatek/gemini/SimManagement;)V

    .line 1058
    return-void
.end method
