.class Lcom/android/jrdsettings/audioshare/AudioShareHelp$viewPagerChangeListener;
.super Ljava/lang/Object;
.source "AudioShareHelp.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/AudioShareHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "viewPagerChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/AudioShareHelp;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp$viewPagerChangeListener;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/audioshare/AudioShareHelp;Lcom/android/jrdsettings/audioshare/AudioShareHelp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/AudioShareHelp$viewPagerChangeListener;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 147
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 151
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp$viewPagerChangeListener;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareHelp;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mDots:Ljava/util/List;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->access$300(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp$viewPagerChangeListener;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareHelp;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mOldPosition:I
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 141
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp$viewPagerChangeListener;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareHelp;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mDots:Ljava/util/List;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->access$300(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp$viewPagerChangeListener;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareHelp;

    #setter for: Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mOldPosition:I
    invoke-static {v0, p1}, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->access$202(Lcom/android/jrdsettings/audioshare/AudioShareHelp;I)I

    .line 143
    return-void
.end method
