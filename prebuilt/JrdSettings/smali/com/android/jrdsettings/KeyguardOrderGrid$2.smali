.class Lcom/android/jrdsettings/KeyguardOrderGrid$2;
.super Ljava/lang/Object;
.source "KeyguardOrderGrid.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/KeyguardOrderGrid;->OnMove(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

.field final synthetic val$adapter:Lcom/android/jrdsettings/KeyguardOrderAdapter;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/KeyguardOrderGrid;Lcom/android/jrdsettings/KeyguardOrderAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$2;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iput-object p2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$2;->val$adapter:Lcom/android/jrdsettings/KeyguardOrderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, animaionID:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$2;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->LastAnimationID:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$2400(Lcom/android/jrdsettings/KeyguardOrderGrid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$2;->val$adapter:Lcom/android/jrdsettings/KeyguardOrderAdapter;

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$2;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->startPosition:I
    invoke-static {v2}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$400(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v2

    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$2;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->dropPosition:I
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$600(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/KeyguardOrderAdapter;->exchange(II)V

    .line 269
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$2;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$2;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->dropPosition:I
    invoke-static {v2}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$600(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v2

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->startPosition:I
    invoke-static {v1, v2}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$402(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 270
    iget-object v1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$2;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    const/4 v2, 0x0

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->isMoving:Z
    invoke-static {v1, v2}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$2302(Lcom/android/jrdsettings/KeyguardOrderGrid;Z)Z

    .line 272
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 259
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$2;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    const/4 v1, 0x1

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->isMoving:Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$2302(Lcom/android/jrdsettings/KeyguardOrderGrid;Z)Z

    .line 253
    return-void
.end method
