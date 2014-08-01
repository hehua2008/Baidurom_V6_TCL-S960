.class Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$CanvasCache;
.super Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;
.source "KeyguardWidgetEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CanvasCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal",
        "<",
        "Landroid/graphics/Canvas;",
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
    .line 847
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$CanvasCache;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;

    invoke-direct {p0, p1}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;-><init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;)V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 850
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$CanvasCache;->initialValue()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method
