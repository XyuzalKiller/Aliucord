.class public final Landroidx/core/view/LayoutInflaterCompat;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutInflaterCompatHC"

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 6

    .line 1
    sget-boolean v0, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    const-string v1, "; inflation may have unexpected results."

    const-string v2, "LayoutInflaterCompatHC"

    if-nez v0, :cond_33

    const/4 v0, 0x1

    .line 2
    :try_start_9
    const-class v3, Landroid/view/LayoutInflater;

    const-string v4, "mFactory2"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    .line 3
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_31

    :catch_17
    move-exception v3

    const-string v4, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    .line 4
    invoke-static {v4}, Lb/d/b/a/a;->U(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/view/LayoutInflater;

    .line 5
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :goto_31
    sput-boolean v0, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    .line 8
    :cond_33
    sget-object v0, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_53

    .line 9
    :try_start_37
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_53

    :catch_3b
    move-exception p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_53
    :goto_53
    return-void
.end method

.method public static getFactory(Landroid/view/LayoutInflater;)Landroidx/core/view/LayoutInflaterFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    if-eqz v0, :cond_d

    .line 3
    check-cast p0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    iget-object p0, p0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Landroidx/core/view/LayoutInflaterFactory;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setFactory(Landroid/view/LayoutInflater;Landroidx/core/view/LayoutInflaterFactory;)V
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/LayoutInflaterFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_8

    .line 1
    new-instance v0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v0, p1}, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroidx/core/view/LayoutInflaterFactory;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-void
.end method

.method public static setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 0
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/LayoutInflater$Factory2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-void
.end method
