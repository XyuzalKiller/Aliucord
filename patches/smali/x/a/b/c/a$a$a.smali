.class public Lx/a/b/c/a$a$a;
.super Ljava/lang/Object;
.source "IResultReceiver.java"

# interfaces
.implements Lx/a/b/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/a/b/c/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx/a/b/c/a$a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lx/a/b/c/a$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public r0(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.support.v4.os.IResultReceiver"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_17

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 6
    :cond_17
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_1a
    iget-object p1, p0, Lx/a/b/c/a$a$a;->a:Landroid/os/IBinder;

    const/4 p2, 0x0

    invoke-interface {p1, v1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    if-nez p1, :cond_25

    .line 8
    sget p1, Lx/a/b/c/a$a;->a:I
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_29

    .line 9
    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_29
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10
    throw p1
.end method
