.class public Lcom/jcraft/jsch/JulLogger;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/jcraft/jsch/Logger;


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/jcraft/jsch/JSch;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/jcraft/jsch/JulLogger;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(I)Ljava/util/logging/Level;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object p0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    sget-object p0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    sget-object p0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 28
    .line 29
    return-object p0
.end method


# virtual methods
.method public final isEnabled(I)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/JulLogger;->a:Ljava/util/logging/Logger;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/jcraft/jsch/JulLogger;->a(I)Ljava/util/logging/Level;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final log(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jsch/JulLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/JulLogger;->a:Ljava/util/logging/Logger;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/jcraft/jsch/JulLogger;->a(I)Ljava/util/logging/Level;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/jcraft/jsch/JulLogger;->a(I)Ljava/util/logging/Level;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
