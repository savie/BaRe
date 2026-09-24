.class public final synthetic Lorg/swiftapps/swiftbackup/cloud/protocols/filen/b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lka;


# direct methods
.method public synthetic constructor <init>(Lka;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/b;->a:Lka;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/b;->a:Lka;

    .line 7
    .line 8
    iget-object p0, p0, Lka;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/google/gson/a;

    .line 11
    .line 12
    const-class v0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/a;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/filen/FilenItemCodec$DirectoryMetadata;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    const-string p0, "Missing Filen directory name"

    .line 32
    .line 33
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method
