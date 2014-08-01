.class Lcom/android/jrdsettings/KeyguardWidgetEditActivity$1;
.super Ljava/lang/Object;
.source "KeyguardWidgetEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->setupViews(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$1;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$1;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upPosition:I
    invoke-static {v2}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$000(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    if-gez v2, :cond_0

    move v0, v1

    .line 198
    .local v0, x:I
    :goto_0
    const/4 v0, 0x0

    .line 199
    sget-object v2, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 200
    return-void

    .line 197
    .end local v0           #x:I
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$1;->this$0:Lcom/android/jrdsettings/KeyguardWidgetEditActivity;

    #getter for: Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->upPosition:I
    invoke-static {v2}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity;->access$000(Lcom/android/jrdsettings/KeyguardWidgetEditActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    mul-int/lit16 v0, v2, 0x12c

    goto :goto_0
.end method
