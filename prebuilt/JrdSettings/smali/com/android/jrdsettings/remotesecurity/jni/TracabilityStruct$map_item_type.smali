.class Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;
.super Ljava/lang/Object;
.source "TracabilityStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "map_item_type"
.end annotation


# instance fields
.field id:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

.field name:Ljava/lang/String;

.field size:I


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;I)V
    .locals 0
    .parameter "i"
    .parameter "s"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;->id:Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$ID;

    iput p2, p0, Lcom/android/jrdsettings/remotesecurity/jni/TracabilityStruct$map_item_type;->size:I

    .line 128
    return-void
.end method
