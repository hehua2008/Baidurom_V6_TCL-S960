.class final Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl$1;
.super Ljava/lang/Object;
.source "GsmAuthenticationResultImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;
    .locals 1
    .parameter "source"

    .prologue
    .line 84
    new-instance v0, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;

    invoke-direct {v0, p1}, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;
    .locals 1
    .parameter "size"

    .prologue
    .line 80
    new-array v0, p1, [Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl$1;->newArray(I)[Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;

    move-result-object v0

    return-object v0
.end method
