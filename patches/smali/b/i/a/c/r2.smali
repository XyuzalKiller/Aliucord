.class public final Lb/i/a/c/r2;
.super Ljava/lang/Object;
.source "WifiLockManager.java"


# instance fields
.field public final a:Landroid/net/wifi/WifiManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Landroid/net/wifi/WifiManager$WifiLock;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lb/i/a/c/r2;->a:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/i/a/c/r2;->b:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-boolean v1, p0, Lb/i/a/c/r2;->c:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lb/i/a/c/r2;->d:Z

    if-eqz v1, :cond_11

    .line 3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_14

    .line 4
    :cond_11
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :goto_14
    return-void
.end method
