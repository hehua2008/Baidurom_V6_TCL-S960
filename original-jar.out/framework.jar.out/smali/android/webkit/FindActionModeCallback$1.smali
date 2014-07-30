.class Landroid/webkit/FindActionModeCallback$1;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/FindActionModeCallback;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/FindActionModeCallback;


# direct methods
.method constructor <init>(Landroid/webkit/FindActionModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback$1;->this$0:Landroid/webkit/FindActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 63
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 64
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback$1;->this$0:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/FindActionModeCallback;->finish()V

    .line 66
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
