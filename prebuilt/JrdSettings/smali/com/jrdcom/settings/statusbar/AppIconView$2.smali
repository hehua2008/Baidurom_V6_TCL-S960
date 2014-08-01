.class Lcom/jrdcom/settings/statusbar/AppIconView$2;
.super Ljava/lang/Object;
.source "AppIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/settings/statusbar/AppIconView;->resetDrawableState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/settings/statusbar/AppIconView;


# direct methods
.method constructor <init>(Lcom/jrdcom/settings/statusbar/AppIconView;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/jrdcom/settings/statusbar/AppIconView$2;->this$0:Lcom/jrdcom/settings/statusbar/AppIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView$2;->this$0:Lcom/jrdcom/settings/statusbar/AppIconView;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 89
    return-void
.end method
