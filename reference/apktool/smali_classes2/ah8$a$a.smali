.class public final Lah8$a$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Laj8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lah8$a;->fromDatabase(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;Lmt3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $firebaseUser:Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

.field final synthetic $onCompletion:Lmt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmt3;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;Lmt3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;",
            "Lmt3;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lah8$a$a;->$firebaseUser:Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 2
    .line 3
    iput-object p2, p0, Lah8$a$a;->$onCompletion:Lmt3;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCancelled(Lwc2;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "onCancelled: Error while writing user info to database"

    .line 5
    .line 6
    const-string v1, "MUser"

    .line 7
    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Lwc2;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "onCancelled: "

    .line 14
    .line 15
    invoke-static {v0, p1, v1}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lah8$a$a;->$onCompletion:Lmt3;

    .line 19
    .line 20
    sget-object v0, Lah8;->Companion:Lah8$a;

    .line 21
    .line 22
    iget-object p0, p0, Lah8$a$a;->$firebaseUser:Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 23
    .line 24
    invoke-static {v0, p0}, Lah8$a;->access$createNew(Lah8$a;Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lah8;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p1, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onDataChange(Leb2;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lah8;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lah8;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lah8;->Companion:Lah8$a;

    .line 15
    .line 16
    iget-object v0, p0, Lah8$a$a;->$firebaseUser:Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lah8$a;->access$createNew(Lah8$a;Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lah8;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lah8$a$a;->$firebaseUser:Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 24
    .line 25
    invoke-static {p1, v0}, Lah8;->access$updateFields(Lah8;Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p0, p0, Lah8$a$a;->$onCompletion:Lmt3;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method
