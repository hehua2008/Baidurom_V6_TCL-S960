.class Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$PaintCache;
.super Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;
.source "KeyguardWidgetEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaintCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal",
        "<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$PaintCache;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;

    invoke-direct {p0, p1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;)V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$PaintCache;->initialValue()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
