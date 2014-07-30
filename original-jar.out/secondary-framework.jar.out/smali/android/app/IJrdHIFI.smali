.class public interface abstract Landroid/app/IJrdHIFI;
.super Ljava/lang/Object;
.source "IJrdHIFI.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IJrdHIFI$Stub;
    }
.end annotation


# virtual methods
.method public abstract getHIFIStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHIFIStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
