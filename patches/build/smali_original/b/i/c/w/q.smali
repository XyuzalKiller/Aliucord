.class public Lb/i/c/w/q;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.0"


# static fields
.field public static final a:Lb/i/c/p/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb/i/c/p/h/e;

    invoke-direct {v0}, Lb/i/c/p/h/e;-><init>()V

    const-class v1, Lb/i/c/w/m$b;

    new-instance v2, Lb/i/c/w/m$c;

    invoke-direct {v2}, Lb/i/c/w/m$c;-><init>()V

    .line 2
    iget-object v3, v0, Lb/i/c/p/h/e;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Lb/i/c/p/h/e;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lb/i/c/w/m;

    new-instance v2, Lb/i/c/w/m$a;

    invoke-direct {v2}, Lb/i/c/w/m$a;-><init>()V

    .line 5
    iget-object v3, v0, Lb/i/c/p/h/e;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, v0, Lb/i/c/p/h/e;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lb/i/c/p/h/d;

    invoke-direct {v1, v0}, Lb/i/c/p/h/d;-><init>(Lb/i/c/p/h/e;)V

    .line 8
    sput-object v1, Lb/i/c/w/q;->a:Lb/i/c/p/a;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "from"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    const-string v0, "/topics/"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "google.c.a.c_id"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    const-string v2, "_nmid"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const-string v1, "google.c.a.c_l"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string v2, "_nmn"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const-string v1, "google.c.a.m_l"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "label"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    const-string v1, "google.c.a.m_c"

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "message_channel"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_41
    invoke-static {p1}, Lb/i/c/w/q;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    const-string v2, "_nt"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    const-string v1, "google.c.a.ts"

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseMessaging"

    if-eqz v1, :cond_66

    :try_start_56
    const-string v3, "_nmt"

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_5f} :catch_60

    goto :goto_66

    :catch_60
    move-exception v1

    const-string v3, "Error while parsing timestamp in GCM event"

    .line 16
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_66
    :goto_66
    const-string v1, "google.c.a.udt"

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_74

    :cond_73
    const/4 v1, 0x0

    :goto_74
    if-eqz v1, :cond_86

    :try_start_76
    const-string v3, "_ndt"

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 20
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_7f} :catch_80

    goto :goto_86

    :catch_80
    move-exception v1

    const-string v3, "Error while parsing use_device_time in GCM event"

    .line 21
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :cond_86
    :goto_86
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_99

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lb/i/c/w/r;->f(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_99

    const-string p1, "display"

    goto :goto_9b

    :cond_99
    const-string p1, "data"

    :goto_9b
    const-string v1, "_nr"

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ab

    const-string v1, "_nf"

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    :cond_ab
    const-string v1, "_nmc"

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    const/4 p1, 0x3

    .line 26
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d1

    .line 27
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    const-string v1, "Logging to scion event="

    const-string v4, " scionPayload="

    invoke-static {v3, v1, p0, v4, p1}, Lb/d/b/a/a;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_d1
    invoke-static {}, Lb/i/c/c;->b()Lb/i/c/c;

    move-result-object p1

    const-class v1, Lb/i/c/j/a/a;

    .line 29
    invoke-virtual {p1}, Lb/i/c/c;->a()V

    .line 30
    iget-object p1, p1, Lb/i/c/c;->g:Lb/i/c/l/k;

    invoke-virtual {p1, v1}, Lb/i/c/l/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    check-cast p1, Lb/i/c/j/a/a;

    if-eqz p1, :cond_ea

    const-string v1, "fcm"

    .line 32
    invoke-interface {p1, v1, p0, v0}, Lb/i/c/j/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_ea
    const-string p0, "Unable to log event: analytics library is missing"

    .line 33
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static c(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p0, :cond_1c

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1c

    :cond_f
    const-string v0, "google.c.a.e"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method
