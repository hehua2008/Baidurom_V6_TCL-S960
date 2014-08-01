.class Lcom/jrdcom/settings/statusbar/StatusBarSettings$5;
.super Ljava/lang/Object;
.source "StatusBarSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/settings/statusbar/StatusBarSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 222
    iput-object p1, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$5;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/StatusBarSettings$5;->this$0:Lcom/jrdcom/settings/statusbar/StatusBarSettings;

    invoke-virtual {v0, p1}, Lcom/jrdcom/settings/statusbar/StatusBarSettings;->dismissCling(Landroid/view/View;)V

    .line 227
    return-void
.end method
