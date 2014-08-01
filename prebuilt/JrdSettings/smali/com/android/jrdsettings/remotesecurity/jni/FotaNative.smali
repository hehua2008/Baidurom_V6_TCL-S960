.class public Lcom/android/jrdsettings/remotesecurity/jni/FotaNative;
.super Ljava/lang/Object;
.source "FotaNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FotaNative"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "suapp_d_native"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public native myrandom(I)I
.end method

.method public native otu_backup_session_info()I
.end method

.method public native otu_create_device_info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public native otu_download_speed()F
.end method

.method public native otu_get_file_list()[Ljava/lang/Object;
.end method

.method public native otu_get_first_sw_byte(I)I
.end method

.method public native otu_get_next_sw_byte()I
.end method

.method public native otu_get_request_completion_status()I
.end method

.method public native otu_get_request_status()I
.end method

.method public native otu_get_session_availability()I
.end method

.method public native otu_init(ZZ)I
.end method

.method public native otu_remove_session_info()V
.end method

.method public native otu_request_download_start()I
.end method

.method public native otu_request_download_stop()I
.end method

.method public native otu_request_fileset_info()I
.end method

.method public native otu_request_session_delete()I
.end method

.method public native otu_request_session_resume()I
.end method

.method public native otu_reset()I
.end method

.method public native otu_restore_session_info()I
.end method

.method public native otu_save_files(I[Ljava/lang/String;[I)I
.end method

.method public native otu_shutdown()I
.end method

.method public native report_to_otu_server(II)I
.end method

.method public native wait_for_otu_request_completion_or_timeout(I)[I
.end method
