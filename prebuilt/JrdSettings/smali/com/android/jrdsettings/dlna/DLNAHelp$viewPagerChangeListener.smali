.class Lcom/android/jrdsettings/dlna/DLNAHelp$viewPagerChangeListener;
.super Ljava/lang/Object;
.source "DLNAHelp.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/dlna/DLNAHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "viewPagerChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/dlna/DLNAHelp;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/dlna/DLNAHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/jrdsettings/dlna/DLNAHelp$viewPagerChangeListener;->this$0:Lcom/android/jrdsettings/dlna/DLNAHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/dlna/DLNAHelp;Lcom/android/jrdsettings/dlna/DLNAHelp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/dlna/DLNAHelp$viewPagerChangeListener;-><init>(Lcom/android/jrdsettings/dlna/DLNAHelp;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 151
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 155
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp$viewPagerChangeListener;->this$0:Lcom/android/jrdsettings/dlna/DLNAHelp;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAHelp;->mDots:Ljava/util/List;
    invoke-static {v0}, Lcom/android/jrdsettings/dlna/DLNAHelp;->access$300(Lcom/android/jrdsettings/dlna/DLNAHelp;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNAHelp$viewPagerChangeListener;->this$0:Lcom/android/jrdsettings/dlna/DLNAHelp;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAHelp;->mOldPosition:I
    invoke-static {v1}, Lcom/android/jrdsettings/dlna/DLNAHelp;->access$200(Lcom/android/jrdsettings/dlna/DLNAHelp;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 145
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp$viewPagerChangeListener;->this$0:Lcom/android/jrdsettings/dlna/DLNAHelp;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAHelp;->mDots:Ljava/util/List;
    invoke-static {v0}, Lcom/android/jrdsettings/dlna/DLNAHelp;->access$300(Lcom/android/jrdsettings/dlna/DLNAHelp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp$viewPagerChangeListener;->this$0:Lcom/android/jrdsettings/dlna/DLNAHelp;

    #setter for: Lcom/android/jrdsettings/dlna/DLNAHelp;->mOldPosition:I
    invoke-static {v0, p1}, Lcom/android/jrdsettings/dlna/DLNAHelp;->access$202(Lcom/android/jrdsettings/dlna/DLNAHelp;I)I

    .line 147
    return-void
.end method
