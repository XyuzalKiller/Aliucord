.class public abstract Ld0/e0/p/d/m0/c/i1/k;
.super Ld0/e0/p/d/m0/c/g1/b;
.source "DeclarationDescriptorImpl.java"

# interfaces
.implements Ld0/e0/p/d/m0/c/m;


# instance fields
.field public final k:Ld0/e0/p/d/m0/g/e;


# direct methods
.method public constructor <init>(Ld0/e0/p/d/m0/c/g1/g;Ld0/e0/p/d/m0/g/e;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    if-eqz p2, :cond_b

    .line 1
    invoke-direct {p0, p1}, Ld0/e0/p/d/m0/c/g1/b;-><init>(Ld0/e0/p/d/m0/c/g1/g;)V

    .line 2
    iput-object p2, p0, Ld0/e0/p/d/m0/c/i1/k;->k:Ld0/e0/p/d/m0/g/e;

    return-void

    :cond_b
    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ld0/e0/p/d/m0/c/i1/k;->a(I)V

    throw v0

    :cond_10
    const/4 p1, 0x0

    invoke-static {p1}, Ld0/e0/p/d/m0/c/i1/k;->a(I)V

    throw v0
.end method

.method public static synthetic a(I)V
    .locals 9

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p0, v3, :cond_f

    if-eq p0, v2, :cond_f

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_f

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_11

    :cond_f
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_11
    if-eq p0, v3, :cond_1b

    if-eq p0, v2, :cond_1b

    if-eq p0, v1, :cond_1b

    if-eq p0, v0, :cond_1b

    const/4 v5, 0x3

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x2

    :goto_1c
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_7a

    const-string v8, "annotations"

    aput-object v8, v5, v7

    goto :goto_35

    :pswitch_29
    const-string v8, "descriptor"

    aput-object v8, v5, v7

    goto :goto_35

    :pswitch_2e
    aput-object v6, v5, v7

    goto :goto_35

    :pswitch_31
    const-string v8, "name"

    aput-object v8, v5, v7

    :goto_35
    const-string v7, "toString"

    const/4 v8, 0x1

    if-eq p0, v3, :cond_4b

    if-eq p0, v2, :cond_46

    if-eq p0, v1, :cond_43

    if-eq p0, v0, :cond_43

    aput-object v6, v5, v8

    goto :goto_4f

    :cond_43
    aput-object v7, v5, v8

    goto :goto_4f

    :cond_46
    const-string v6, "getOriginal"

    aput-object v6, v5, v8

    goto :goto_4f

    :cond_4b
    const-string v6, "getName"

    aput-object v6, v5, v8

    :goto_4f
    if-eq p0, v3, :cond_61

    if-eq p0, v2, :cond_61

    const/4 v6, 0x4

    if-eq p0, v6, :cond_5f

    if-eq p0, v1, :cond_61

    if-eq p0, v0, :cond_61

    const-string v6, "<init>"

    aput-object v6, v5, v3

    goto :goto_61

    :cond_5f
    aput-object v7, v5, v3

    :cond_61
    :goto_61
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_73

    if-eq p0, v2, :cond_73

    if-eq p0, v1, :cond_73

    if-eq p0, v0, :cond_73

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_78

    :cond_73
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_78
    throw p0

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2e
        :pswitch_2e
        :pswitch_29
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method public static toString(Ld0/e0/p/d/m0/c/m;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_6b

    .line 2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ld0/e0/p/d/m0/j/c;->c:Ld0/e0/p/d/m0/j/c;

    invoke-virtual {v2, p0}, Ld0/e0/p/d/m0/j/c;->render(Ld0/e0/p/d/m0/c/m;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_42

    if-eqz p0, :cond_3d

    return-object p0

    :cond_3d
    const/4 p0, 0x5

    invoke-static {p0}, Ld0/e0/p/d/m0/c/i1/k;->a(I)V

    throw v0

    :catchall_42
    nop

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ld0/e0/p/d/m0/c/m;->getName()Ld0/e0/p/d/m0/g/e;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_66

    return-object p0

    :cond_66
    const/4 p0, 0x6

    invoke-static {p0}, Ld0/e0/p/d/m0/c/i1/k;->a(I)V

    throw v0

    :cond_6b
    const/4 p0, 0x4

    .line 4
    invoke-static {p0}, Ld0/e0/p/d/m0/c/i1/k;->a(I)V

    throw v0
.end method


# virtual methods
.method public getName()Ld0/e0/p/d/m0/g/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/e0/p/d/m0/c/i1/k;->k:Ld0/e0/p/d/m0/g/e;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x2

    invoke-static {v0}, Ld0/e0/p/d/m0/c/i1/k;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getOriginal()Ld0/e0/p/d/m0/c/m;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ld0/e0/p/d/m0/c/i1/k;->toString(Ld0/e0/p/d/m0/c/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
