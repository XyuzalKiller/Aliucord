.class public final Ls/a/a/e;
.super Ljava/lang/Object;
.source "Concurrent.kt"


# static fields
.field public static final a:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    :try_start_0
    const-class v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v1, "setRemoveOnCancelPolicy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_12

    :catchall_11
    const/4 v0, 0x0

    .line 2
    :goto_12
    sput-object v0, Ls/a/a/e;->a:Ljava/lang/reflect/Method;

    return-void
.end method
