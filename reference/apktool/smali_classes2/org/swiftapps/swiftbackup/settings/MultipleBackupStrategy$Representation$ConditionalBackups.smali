.class public final Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;
.super Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConditionalBackups"
.end annotation


# instance fields
.field private final condition:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

.field private final maxNumOfBackups:I


# direct methods
.method public constructor <init>(ILorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->maxNumOfBackups:I

    .line 9
    .line 10
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->condition:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;ILorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->maxNumOfBackups:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->condition:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->copy(ILorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->maxNumOfBackups:I

    .line 2
    .line 3
    return p0
.end method

.method public final component2()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->condition:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(ILorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;-><init>(ILorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;

    .line 12
    .line 13
    iget v1, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->maxNumOfBackups:I

    .line 14
    .line 15
    iget v3, p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->maxNumOfBackups:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->condition:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 21
    .line 22
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->condition:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 23
    .line 24
    if-eq p0, p1, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    return v0
.end method

.method public final getCondition()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->condition:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMaxNumOfBackups()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->maxNumOfBackups:I

    .line 2
    .line 3
    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->maxNumOfBackups:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->condition:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->maxNumOfBackups:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation$ConditionalBackups;->condition:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "ConditionalBackups(maxNumOfBackups="

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, ", condition="

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
