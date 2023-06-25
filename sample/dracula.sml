(*
 * Once upon a time...
 *)

structure Vampire = struct
  type params = {location: string,
                 birthDate: int,
                 deathDate: int,
                 weaknesses: string list}
  type vampire = params
  fun new (v : params) : vampire = v
  fun age (v : vampire) : int = (#deathDate v) - (#birthDate v)
end

(* ...there was a guy named Vlad *)

structure Romainia = struct
  val dracula = Vampire.new {location="Transylvania",
                             birthDate=1428,
                             deathDate=1476,
                             weaknesses=["Sunlight", "Garlic"]}
end
